#ifndef SOFT_MUL_H
#define SOFT_MUL_H

#ifdef __cplusplus
extern "C" {
#endif

unsigned long long __mulhu64_soft(unsigned long long a, unsigned long long b);
unsigned long long __mulhsu64_soft(unsigned long long a, unsigned long long b);
unsigned long long __mulh64_soft(unsigned long long a, unsigned long long b);

#ifdef __cplusplus
}
#endif

#endif /* SOFT_MUL_H */
