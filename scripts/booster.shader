models/buildables/booster/body
{
	qer_editorimage models/buildables/booster/booster_d
	diffuseMap      models/buildables/booster/booster_d
	normalMap       models/buildables/booster/booster_n
	specularMap     models/buildables/booster/booster_s
	glowMap         models/buildables/booster/booster_a
}

models/buildables/booster/booster_head
{
        {
                map models/buildables/booster/booster_head
                rgbGen lightingDiffuse
        }
        {
                map models/buildables/booster/ref_map
                blendfunc filter
                rgbGen identity
                tcMod rotate 5
                tcGen environment
        }
}

models/buildables/booster/booster_sac
{
        {
                map models/buildables/booster/booster_sac
                rgbGen lightingDiffuse
        }
        {
                map models/buildables/booster/poison
                blendfunc add
                rgbGen wave sin 0 1 0 0.1
                tcMod scroll -0.05 -0.05
        }
}

models/buildables/booster/pod_strands
{
        cull disable
        {
                map models/buildables/barricade/pod_strands
                rgbGen lightingDiffuse
                alphaFunc GE128
        }
}

gfx/sprites/booster_spore
{
	cull none
	entityMergable
	{
		map gfx/sprites/boosterspore
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen    vertex
		alphaGen  vertex
		depthFade 100.0
	}
}
