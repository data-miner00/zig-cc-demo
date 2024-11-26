const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "myapp",
        .root_source_file = .{ .path = "main.c" },
        .target = target,
        .optimize = optimize,
    });

    exe.linkLibC();

    b.installArtifact(exe);

    const runCmd = b.addRunArtifact(exe);

    runCmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        runCmd.addArgs(args);
    }

    const runStep = b.step("run", "Run the app");
    runStep.dependOn(&runCmd.step);
}
