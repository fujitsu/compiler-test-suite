#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned int, signed short, unsigned char);
extern void (*v2) (signed char, unsigned int, signed short, unsigned char);
extern signed char v3 (unsigned int, signed char, unsigned int);
extern signed char (*v4) (unsigned int, signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char, signed int, signed int);
extern unsigned int (*v6) (unsigned short, unsigned char, signed int, signed int);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern void v9 (signed short, unsigned char, signed short);
extern void (*v10) (signed short, unsigned char, signed short);
extern unsigned short v11 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v12) (unsigned char, signed int, unsigned char, signed short);
extern unsigned short v13 (signed short, unsigned short);
extern unsigned short (*v14) (signed short, unsigned short);
extern unsigned char v15 (signed short, signed char, signed short);
extern unsigned char (*v16) (signed short, signed char, signed short);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v20) (signed int, signed int, signed short, unsigned short);
unsigned short v21 (signed char);
unsigned short (*v22) (signed char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed short, signed char, signed char);
extern unsigned int (*v28) (unsigned char, signed short, signed char, signed char);
unsigned int v29 (unsigned char, unsigned int, signed char, signed short);
unsigned int (*v30) (unsigned char, unsigned int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed int v32 = -3;
unsigned short v31 = 3;

unsigned int v29 (unsigned char v34, unsigned int v35, signed char v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 4;
unsigned int v39 = 2U;
signed char v38 = 2;
trace++;
switch (trace)
{
case 4: 
return 6U;
case 6: 
return v39;
default: abort ();
}
}
}
}

unsigned short v21 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 0;
signed short v43 = 1;
signed short v42 = 1;
trace++;
switch (trace)
{
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
signed char v47;
unsigned int v48;
signed short v49;
unsigned char v50;
v47 = v33 - v33;
v48 = 2U - 0U;
v49 = -3 + 2;
v50 = 1 - 0;
v1 (v47, v48, v49, v50);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
