// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2022 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

messageAction("vendor");

Shell.mkdirRecursivelyIfNotExists("vendor");

var vendor = "netbeans-" + Project.version + "-bin.zip";
if (!Shell.fileExists("vendor/" + vendor)) {
	var webLink = "https://mirrors.hostingromania.ro/apache.org/netbeans/netbeans/" + Project.version + "/" + vendor;
	var cmd = "curl --insecure --location " + webLink + " --output vendor/" + vendor;
	Console.writeLn(cmd);
	exitIf(Shell.system(cmd));
};
