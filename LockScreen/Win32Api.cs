﻿using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace LockScreen
{
    public class Win32Api
    {
        public const int WM_KEYDOWN = 0x100;

        public const int WM_KEYUP = 0x101;

        public const int WM_SYSKEYDOWN = 0x104;

        public const int WM_SYSKEYUP = 0x105;

        public const int WH_KEYBOARD_LL = 13;

       

        [StructLayout(LayoutKind.Sequential)] //声明键盘钩子的封送结构类型
        public class KeyboardHookStruct
        {

            public int vkCode; //表示一个在1到254间的虚似键盘码 

            public int scanCode; //表示硬件扫描码 

            public int flags;

            public int time;

            public int dwExtraInfo;

        }

        public struct LASTINPUTINFO
        {
            public uint cbSize;
            public uint dwTime;
        }

        public delegate int HookProc(int nCode, Int32 wParam, IntPtr lParam);

        //安装钩子的函数 
        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern int SetWindowsHookEx(int idHook, HookProc lpfn, IntPtr hInstance, int threadId);


        //卸下钩子的函数 

        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern bool UnhookWindowsHookEx(int idHook);


        //下一个钩挂的函数 
        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern int CallNextHookEx(int idHook, int nCode, Int32 wParam, IntPtr lParam);

        [DllImport("kernel32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern IntPtr GetModuleHandle(string lpModuleName);

        [DllImport("User32.dll")]
        public static extern bool GetLastInputInfo(ref LASTINPUTINFO plii);

        /// <summary>
        /// 管理任务管理器的方法 0：启用任务管理器 1：禁用任务管理器
        /// </summary>
        /// <param name="arg">0：启用任务管理器 1：禁用任务管理器</param>
        public static void ManageTaskManager(int arg)
        {
            RegistryKey currentUser = Registry.CurrentUser;
            RegistryKey system = currentUser.OpenSubKey(@"Software\Microsoft\Windows\CurrentVersion\Policies\System", true);
            //如果system项不存在就创建这个项
            if (system == null)
            {
                system = currentUser.CreateSubKey(@"Software\Microsoft\Windows\CurrentVersion\Policies\System");
            }
            system.SetValue("DisableTaskmgr", arg, RegistryValueKind.DWord);
            currentUser.Close();
        }

    }
}
