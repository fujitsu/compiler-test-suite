#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (unsigned short, signed int, unsigned short);
extern signed char (*v12) (unsigned short, signed int, unsigned short);
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
signed short v19 (signed char, unsigned char, unsigned char);
signed short (*v20) (signed char, unsigned char, unsigned char) = v19;
extern unsigned short v21 (unsigned short, signed char, unsigned int);
extern unsigned short (*v22) (unsigned short, signed char, unsigned int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v29 (signed int);
extern void (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v98 = 0;
signed short v97 = 1;
unsigned int v96 = 2U;

signed short v19 (signed char v99, unsigned char v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 3;
unsigned char v103 = 0;
signed short v102 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 3;
unsigned int v107 = 2U;
unsigned short v106 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
