#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int, unsigned char);
extern unsigned int (*v2) (signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned short, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned short, unsigned char, signed int, signed int);
extern signed int v5 (signed int, signed int, signed short, unsigned char);
extern signed int (*v6) (signed int, signed int, signed short, unsigned char);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern unsigned short v21 (signed short, unsigned char, unsigned short, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned short, signed short);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (unsigned short, signed int, signed int, signed int);
extern unsigned short (*v28) (unsigned short, signed int, signed int, signed int);
extern unsigned int v29 (signed short, unsigned short, signed char, signed int);
extern unsigned int (*v30) (signed short, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed char v32 = -1;
unsigned int v31 = 7U;

unsigned char v19 (void)
{
{
for (;;) {
unsigned short v36 = 3;
unsigned int v35 = 3U;
signed short v34 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed char v37;
signed short v38;
v37 = -4 + -1;
v38 = v23 (v37);
history[history_index++] = (int)v38;
}
break;
case 4: 
return 7;
case 6: 
{
signed char v39;
signed short v40;
v39 = -4 - 3;
v40 = v23 (v39);
history[history_index++] = (int)v40;
}
break;
case 14: 
return 5;
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
signed char v43;
unsigned int v44;
unsigned char v45;
unsigned int v46;
v43 = -1 - v32;
v44 = v31 + 6U;
v45 = 7 + 1;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
