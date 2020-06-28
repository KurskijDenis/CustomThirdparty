set(THIRD_PARTY_NAMESPACE CustomThirdparty)

foreach(_comp ${CustomThirdparty_FIND_COMPONENTS})
        include(${THIRD_PARTY_ROOT}/cmake/${_comp}.cmake)
endforeach()