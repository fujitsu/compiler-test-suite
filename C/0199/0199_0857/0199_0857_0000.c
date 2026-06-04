#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (signed short, unsigned char, signed char);
extern unsigned int (*v4) (signed short, unsigned char, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed int, unsigned int);
extern signed char (*v24) (signed int, unsigned int);
extern signed char v25 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int, unsigned int, unsigned int);
signed short v27 (signed int, unsigned short, signed char, unsigned char);
signed short (*v28) (signed int, unsigned short, signed char, unsigned char) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = -1;
signed char v31 = 0;

signed short v27 (signed int v34, unsigned short v35, signed char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -4;
signed int v39 = 0;
unsigned short v38 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v41;
v41 = v29 ();
history[history_index++] = (int)v41;
}
break;
case 7: 
{
unsigned short v42;
v42 = v29 ();
history[history_index++] = (int)v42;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

signed char v19 (signed char v43, unsigned short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 6U;
signed int v46 = 0;
unsigned char v45 = 0;
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
signed int v50;
signed short v51;
v50 = 1 - 3;
v51 = v1 (v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
