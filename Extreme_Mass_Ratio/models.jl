function NewtonianOrbitModel(u, model_params, t)
    χ, ϕ = u
    p, M, e  = model_params

    numer = (1+e*cos(χ))^2
    denom = M*(p^(3/2))

    χ̇ = numer / denom
    ϕ̇ = numer / denom

    return [χ̇, ϕ̇]

end

function RelativisticOrbitModel(u, model_params, t)
    χ, ϕ = u
    p, M, e  = model_params

    numer = (p-2-2*e*cos(χ)) * (1+e*cos(χ))^2
    denom = sqrt( (p-2)^2-4*e^2 )

    χ̇ = numer * sqrt( p-6-2*e*cos(χ) )/( M*(p^2)*denom )
    ϕ̇ = numer / (M*(p^(3/2))*denom)

    return [χ̇, ϕ̇]

end

function ODE_model(u, nn_params, t)
    χ, ϕ = u
    p, M, e = ode_model_params

    y = 1 .+ nn_model([first(u)], nn_params)

    numer = (1 + e * cos(χ))^2
    denom = M * (p^(3 / 2))

    χ̇ = (numer / denom) * y[1]
    ϕ̇ = (numer / denom) * y[2]

    return [χ̇, ϕ̇]
end




