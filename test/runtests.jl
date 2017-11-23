using Unitful: NoUnits
using UnitfulNuclear
using Base.Test

@testset "UnitfulNuclear.jl" begin
  @testset "unit tests" begin
    cur_dict = Dict(
      1u"u" => ( 1.66054e-27*Unitful.kg ),
      1u"n20" => ( 1e20*u"m^-3" ),
      1u"b" => ( 1e-24*u"cm^2" )
    )

    expected_value = 1.0

    for (cur_key, cur_value) in cur_dict
      actual_value = ( cur_key / cur_value )
      actual_value = actual_value |> NoUnits

      @test isapprox(expected_value, actual_value, rtol=5e-5)
    end

    @test eps_0 == Unitful.ϵ0
    @test mu_0 == Unitful.μ0
  end
end

