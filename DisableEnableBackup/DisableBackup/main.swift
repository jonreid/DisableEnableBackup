// EnableDisableBackup by Jon Reid, https://qualitycoding.org
// Copyright 2023 Jonathan M. Reid. https://github.com/jonreid/DisableEnableBackup/blob/main/LICENSE.txt
// SPDX-License-Identifier: MIT

runShell("sudo tmutil disable")
runShell("sudo tmutil stopbackup")
