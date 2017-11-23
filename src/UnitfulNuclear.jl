__precompile__()

module UnitfulNuclear

  import Unitful
  using Unitful: @unit, @u_str, uconvert

  export eps_0, mu_0
  export @u_str, uconvert

  eps_0 = Unitful.ϵ0
  mu_0 = uconvert(u"T*m/MA", Unitful.μ0)

  @unit n20 "n20" PlasmaDensity 1e20/Unitful.m^3 false
  @unit b "b" Barn 1e-28*Unitful.m^2 true
  @unit u "u" AMU 1.660539040e-27*Unitful.kg false

  const localunits = Unitful.basefactors
  function __init__()
      merge!(Unitful.basefactors, localunits)
      Unitful.register(UnitfulNuclear)
  end

end
