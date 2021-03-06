module wiz.cpu.platform;

import wiz.lib;

abstract class Platform
{
    alias sym.Definition[string] BuiltinTable;
    
    abstract BuiltinTable builtins();
    abstract ubyte[] generatePush(compile.Program program, ast.Push stmt);
    abstract ubyte[] generateJump(compile.Program program, ast.Jump stmt);
    abstract ubyte[] generateComparison(compile.Program program, ast.Comparison stmt);
    abstract ubyte[] generateAssignment(compile.Program program, ast.Assignment stmt);
    abstract void patch(ref ubyte[] buffer);
}