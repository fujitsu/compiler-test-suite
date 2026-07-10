/*
FEATURE: Modules
SPEC: ISO/IEC 14882:2020 (C++20) §10 [module]
PURPOSE: Define a named module and export functions and types
         for importer-side verification.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror --precompile modules.cppm -o modules.pcm
*/

export module modules;

// Exported namespace.
export namespace module_api {

// Exported constexpr function.
constexpr int add(int a, int b)
{
    return a + b;
}

// Exported type.
struct Point
{
    int x;
    int y;

    constexpr int sum() const
    {
        return x + y;
    }
};

} // namespace module_api


// Non-exported internal implementation.
namespace module_internal
{

constexpr int hidden_value()
{
    return 7;
}

} // namespace module_internal
