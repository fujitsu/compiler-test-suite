#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int, signed short, unsigned char, unsigned int);
extern unsigned char (*v2) (signed int, signed short, unsigned char, unsigned int);
extern unsigned short v3 (signed short, unsigned char, unsigned short, signed int);
extern unsigned short (*v4) (signed short, unsigned char, unsigned short, signed int);
extern unsigned int v5 (signed char, signed int, signed int);
extern unsigned int (*v6) (signed char, signed int, signed int);
signed char v7 (unsigned int, unsigned int);
signed char (*v8) (unsigned int, unsigned int) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (signed short, unsigned short, signed short);
extern unsigned short (*v14) (signed short, unsigned short, signed short);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
signed int v17 (unsigned short, signed char, signed int, signed char);
signed int (*v18) (unsigned short, signed char, signed int, signed char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed char v21 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v22) (signed short, unsigned short, signed int, unsigned int);
extern void v23 (unsigned short, signed int, signed int, signed char);
extern void (*v24) (unsigned short, signed int, signed int, signed char);
signed char v25 (unsigned int, unsigned short);
signed char (*v26) (unsigned int, unsigned short) = v25;
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (unsigned short, signed short, signed short);
extern void (*v30) (unsigned short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed int v32 = -4;
signed int v31 = 2;

signed char v25 (unsigned int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned short v37 = 0;
unsigned short v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v39, signed char v40, signed int v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -3;
unsigned int v44 = 2U;
signed short v43 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v46, unsigned int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 0;
signed short v49 = -2;
signed char v48 = 3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v53;
signed short v54;
unsigned char v55;
unsigned int v56;
unsigned char v57;
v53 = v31 + v31;
v54 = 1 - -4;
v55 = 5 - 0;
v56 = 2U - 0U;
v57 = v1 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
