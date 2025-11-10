const std = @import("std");

pub fn parseInt(T: type, string: []const u8, base: u8) !T {
    _ = string;
    _ = base;
    return error.Unimplemented;
}
