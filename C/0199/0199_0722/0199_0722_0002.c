#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern signed char v7 (signed int, unsigned short, unsigned int, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
unsigned short v15 (signed char, unsigned char, unsigned char, signed char);
unsigned short (*v16) (signed char, unsigned char, unsigned char, signed char) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned char, signed int, signed int);
extern signed char (*v20) (unsigned char, signed int, signed int);
extern unsigned char v21 (signed char, signed char);
extern unsigned char (*v22) (signed char, signed char);
extern void v23 (unsigned short, signed int, signed int);
extern void (*v24) (unsigned short, signed int, signed int);
extern void v25 (void);
extern void (*v26) (void);
void v27 (void);
void (*v28) (void) = v27;
extern signed int v29 (signed int, signed int);
extern signed int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = 0;
signed int v95 = 0;
unsigned int v94 = 0U;

void v27 (void)
{
{
for (;;) {
signed char v99 = -3;
signed char v98 = -1;
unsigned int v97 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v100, unsigned char v101, unsigned char v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -1;
unsigned char v105 = 2;
unsigned int v104 = 2U;
trace++;
switch (trace)
{
case 9: 
return 7;
case 11: 
return 6;
default: abort ();
}
}
}
}
