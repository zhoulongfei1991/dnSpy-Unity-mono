.assembly 'invalid_empty_finally_block'
{
  .hash algorithm 0x00008004
  .ver  0:0:0:0
}

.method public static int32 Main() cil managed
{
	.entrypoint
	.maxstack 8
	.locals init (int32 V0)

//try catch
BB_00:
		newobj instance void class [mscorlib]System.Exception::.ctor()
		throw
		leave END
BB_01:

BB_02:
		nop
		endfinally
BB_03:



END:
	ldc.i4.0
	ret

.try BB_00 to BB_01 finally handler BB_02 to BB_02


}
