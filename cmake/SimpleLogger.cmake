add_subdirectory_avoid_diamond(SimpleLogger ${THIRD_PARTY_ROOT}/SimpleLogger)

if (NOT TARGET ${THIRD_PARTY_NAMESPACE}::SimpleLogger)
    add_library(${THIRD_PARTY_NAMESPACE}::SimpleLogger IMPORTED INTERFACE)
    set_target_properties(${THIRD_PARTY_NAMESPACE}::SimpleLogger PROPERTIES
            INTERFACE_INCLUDE_DIRECTORIES "${THIRD_PARTY_ROOT}/SimpleLogger/Headers/"
            INTERFACE_LINK_LIBRARIES SimpleLogger
            )
endif()