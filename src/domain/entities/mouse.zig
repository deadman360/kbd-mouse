const std = @import("std");

pub const MouseButton = enum(i8) { Right = 1, Left = 2 };

pub const IMouseDriver = struct {
    moveBy: fn (self: *@This(), dx: i8, dy: i8) anyerror!void,
    click: fn (self: *@This(), button: MouseButton) anyerror!void,
    close: fn (self: *@This()) anyerror!void,
};
