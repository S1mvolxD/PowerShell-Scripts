# 🧹 Windows Temp Cleaner - A set of PowerShell scripts for cleaning temporary files
https://img.shields.io/badge/PowerShell-5.1+-blue.svg https://img.shields.io/badge/Windows-10%252F11%252FServer-success.svg https://img.shields.io/badge/License-MIT-green.svg https://img.shields.io/badge/Version-2.0.0-orange.svg

A set of standalone PowerShell scripts for safely cleaning temporary files in Windows. Each script performs a specific task.

# ✨ Features
- ✅ Modularity - each script is independent and performs a single task
- ✅ Informative - a detailed report on the implementation
- ✅ Flexibility - can be used separately or in combination
- ✅ Support - Windows 10/11/Server 2016+

# 📁 List of scripts
| Script | Description | Admin rights | Danger  |
| ------ | ----------- | ------------ | ------- |
| [Clear-UserTemp.ps1](https://github.com/S1mvolxD/PowerShell-Scripts/blob/main/System/Clear-UserTemp.ps1) | Clearing the user's temporary files | ❌ | ⭐|
| [Clear-SystemTemp.ps1](https://github.com/S1mvolxD/PowerShell-Scripts/blob/main/System/Clear-SystemTemp.ps1) | Cleaning system temporary files | ✅ | ⭐⭐|
| [Clear-RecycleBin.ps1](https://github.com/S1mvolxD/PowerShell-Scripts/blob/main/System/Clear-RecycleBin.ps1) | Emptying the trash | ❌ | ⭐⭐⭐|
| [Clean-Menu.ps1](https://github.com/S1mvolxD/PowerShell-Scripts/blob/main/System/Clean-Menu.ps1) | Script with a menu | ✅/❌ | ⭐⭐⭐⭐|

# 🚀 Quick start
```ps1
irm https://raw.githubusercontent.com/S1mvolxD/PowerShell-Scripts/refs/heads/main/System/Clean-Menu.ps1 | iex
```

# 🔧 Detailed description of the scripts
<details>
<summary>1. Clear-UserTemp.ps1 - Clearing user temporary files</summary>
### What cleanses:\n%TEMP% & %LOCALAPPDATA%\Temp\nBrowser cache (Edge, Chrome, Firefox)\nRecent documents
</details>

graph TD
    A[Выбор скрипта] --> B{Права администратора?}
    B -->|Да| C[Clear-AllTemp.ps1<br/>с меню]
    B -->|Нет| D[Clear-UserTemp.ps1]
    
    C --> E{Что очистить?}
    E --> F[Полная очистка<br/>Пункт 7]
    E --> G[Выборочная очистка<br/>Пункты 1-6]
    
    D --> H[Дополнительно]
    H --> I[Clear-RecycleBin.ps1<br/>очистка корзины]
    
    F --> J[⚠️ Перезагрузка<br/>рекомендуется]
    G --> K[Готово!]
    I --> K
