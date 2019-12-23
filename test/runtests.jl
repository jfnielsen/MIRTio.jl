# test/runtests.jl

using MIRTio
using Test: @test, detect_ambiguities

@test read_rdb_hdr(:test)
@test h5_test(:test)

@test length(detect_ambiguities(MIRTio)) == 0
