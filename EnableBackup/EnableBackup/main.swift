// EnableDisableBackup by Jon Reid, https://qualitycoding.org
// Copyright 2023 Jonathan M. Reid. https://github.com/jonreid/EnableDisableBackup/blob/main/LICENSE.txt
// SPDX-License-Identifier: MIT

import Foundation

runShell("sudo tmutil enable")

func runShell(_ command: String) {
    let task = Process()
    task.launchPath = "/bin/sh"
    task.arguments = ["-c", command]

    let pipe = Pipe()
    task.standardOutput = pipe
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(decoding: data, as: UTF8.self)
    print(output)
}
