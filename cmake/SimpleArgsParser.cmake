add_subdirectory_avoid_diamond(SimpleArgsParser.cmake ${THIRD_PARTY_ROOT}/SimpleArgumentsParser)

if (NOT TARGET ${THIRD_PARTY_NAMESPACE}::SimpleArgsParser)
    add_library(${THIRD_PARTY_NAMESPACE}::SimpleArgsParser IMPORTED INTERFACE)
    set_target_properties(${THIRD_PARTY_NAMESPACE}::SimpleArgsParser PROPERTIES
            INTERFACE_INCLUDE_DIRECTORIES "${THIRD_PARTY_ROOT}/ArgumentsParser/Headers/"
            INTERFACE_LINK_LIBRARIES SimpleArgsParser
            )
endif()