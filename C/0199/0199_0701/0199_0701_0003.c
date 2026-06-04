#include <stdlib.h>
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned int v7 (signed short, unsigned char);
extern unsigned int (*v8) (signed short, unsigned char);
void v9 (signed short, unsigned int);
void (*v10) (signed short, unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, unsigned int);
extern unsigned int (*v18) (signed char, unsigned int);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern void v21 (unsigned int, unsigned char);
extern void (*v22) (unsigned int, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (signed int, unsigned char);
extern signed int (*v28) (signed int, unsigned char);
extern void v29 (unsigned char);
extern void (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v96 = 1;
signed int v95 = -1;
unsigned int v94 = 0U;

unsigned char v19 (void)
{
{
for (;;) {
unsigned char v99 = 4;
unsigned char v98 = 2;
signed char v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v100, unsigned int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 2U;
signed short v103 = -1;
unsigned short v102 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v105;
unsigned char v106;
v105 = 3U + v104;
v106 = 1 - 5;
v21 (v105, v106);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
