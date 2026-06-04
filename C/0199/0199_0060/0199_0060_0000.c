#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed int v3 (signed char, signed int, signed int);
extern signed int (*v4) (signed char, signed int, signed int);
extern void v5 (unsigned char, signed short, unsigned short, unsigned int);
extern void (*v6) (unsigned char, signed short, unsigned short, unsigned int);
extern unsigned short v7 (signed int, signed int, signed short);
extern unsigned short (*v8) (signed int, signed int, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern void v13 (signed short, signed char, signed short);
extern void (*v14) (signed short, signed char, signed short);
extern signed char v15 (unsigned char, signed int, unsigned char);
extern signed char (*v16) (unsigned char, signed int, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned char v19 (unsigned char);
unsigned char (*v20) (unsigned char) = v19;
extern unsigned char v21 (unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned int, signed char, signed short);
extern unsigned short v23 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned short, signed int, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, signed char, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed char, signed int, unsigned short);
extern void v29 (unsigned char, signed int, unsigned short, signed int);
extern void (*v30) (unsigned char, signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned int v32 = 1U;
signed int v31 = 3;

unsigned char v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 0U;
signed short v36 = 0;
signed char v35 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v38;
unsigned int v39;
signed char v40;
v38 = 1 - 5;
v39 = 5U + v37;
v40 = v11 (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 8: 
{
unsigned short v41;
unsigned short v42;
signed int v43;
unsigned char v44;
unsigned short v45;
v41 = 7 + 2;
v42 = 4 + 4;
v43 = -3 + 2;
v44 = 4 + v34;
v45 = v23 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 10: 
{
unsigned short v46;
unsigned int v47;
signed char v48;
v46 = 6 - 1;
v47 = v37 + 2U;
v48 = v11 (v46, v47);
history[history_index++] = (int)v48;
}
break;
case 12: 
return 7;
case 14: 
return v34;
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
signed char v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
