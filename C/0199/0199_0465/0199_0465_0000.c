#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, signed char);
extern unsigned int (*v2) (unsigned int, signed char, signed char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed short v7 (unsigned short, signed char, unsigned int, unsigned short);
signed short (*v8) (unsigned short, signed char, unsigned int, unsigned short) = v7;
extern void v9 (unsigned short, signed int, unsigned short, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short, unsigned short);
extern void v11 (unsigned short, unsigned short);
extern void (*v12) (unsigned short, unsigned short);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
extern signed short v15 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short, signed short, unsigned short);
extern unsigned int v17 (signed char, signed short, signed char, signed int);
extern unsigned int (*v18) (signed char, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned int, unsigned int, signed short);
extern signed int (*v20) (signed short, unsigned int, unsigned int, signed short);
extern unsigned short v21 (unsigned char, signed char);
extern unsigned short (*v22) (unsigned char, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned int);
extern void (*v28) (unsigned int, signed short, unsigned int);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed short v32 = -1;
unsigned char v31 = 5;

signed char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 0;
signed short v36 = 1;
unsigned short v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v38, signed char v39, unsigned int v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 2U;
unsigned int v43 = 3U;
signed int v42 = 2;
trace++;
switch (trace)
{
case 11: 
return -3;
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
unsigned int v47;
signed char v48;
signed char v49;
unsigned int v50;
v47 = 2U - 6U;
v48 = 0 + 0;
v49 = 2 - -1;
v50 = v1 (v47, v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
