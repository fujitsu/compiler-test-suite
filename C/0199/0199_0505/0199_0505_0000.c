#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned int, unsigned short, unsigned int);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern unsigned int v5 (unsigned char, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed int, signed short, signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned char, unsigned short);
extern void (*v14) (unsigned char, unsigned short);
void v15 (unsigned short, unsigned short);
void (*v16) (unsigned short, unsigned short) = v15;
extern unsigned short v17 (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned char, signed char, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed char v21 (signed int, unsigned char, unsigned char, signed short);
extern signed char (*v22) (signed int, unsigned char, unsigned char, signed short);
extern unsigned short v23 (unsigned char, unsigned short, signed short);
extern unsigned short (*v24) (unsigned char, unsigned short, signed short);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned int v27 (signed int, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short);
extern unsigned short v29 (unsigned int, signed short);
extern unsigned short (*v30) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed char v32 = 0;
signed int v31 = 3;

void v15 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
unsigned char v37 = 6;
unsigned int v36 = 3U;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
{
unsigned char v39;
unsigned short v40;
signed short v41;
unsigned short v42;
v39 = v37 - 7;
v40 = v35 - v35;
v41 = v38 + v38;
v42 = v23 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 9: 
return;
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
signed short v45;
unsigned int v46;
unsigned short v47;
unsigned int v48;
signed int v49;
v45 = -3 - 1;
v46 = 2U - 6U;
v47 = v33 + v33;
v48 = 6U + 5U;
v49 = v1 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
