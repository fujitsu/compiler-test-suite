#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned short v5 (signed char, signed int, unsigned char);
extern unsigned short (*v6) (signed char, signed int, unsigned char);
extern unsigned char v7 (unsigned char);
extern unsigned char (*v8) (unsigned char);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (signed int, unsigned short, unsigned int);
extern signed short (*v16) (signed int, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
signed short v25 (signed short);
signed short (*v26) (signed short) = v25;
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed short v29 (signed int, unsigned char, signed short, signed char);
extern signed short (*v30) (signed int, unsigned char, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
unsigned int v32 = 4U;
unsigned char v31 = 4;

signed short v25 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 5U;
unsigned int v36 = 2U;
unsigned char v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned short v40 = 5;
signed char v39 = 3;
signed int v38 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed int v41;
unsigned short v42;
unsigned int v43;
signed short v44;
v41 = 1 + v38;
v42 = v40 + 1;
v43 = 5U - 7U;
v44 = v15 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 17: 
return 0;
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
signed short v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
