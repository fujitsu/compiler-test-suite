#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned int);
static signed char (*v2) (unsigned int) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (signed int, unsigned short);
extern unsigned char (*v6) (signed int, unsigned short);
extern signed int v7 (unsigned char, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed char, unsigned char, signed char);
extern unsigned short (*v12) (signed char, unsigned char, signed char);
extern signed short v13 (unsigned short, unsigned short, signed short);
extern signed short (*v14) (unsigned short, unsigned short, signed short);
extern signed char v15 (signed short, unsigned short, unsigned int, signed short);
extern signed char (*v16) (signed short, unsigned short, unsigned int, signed short);
extern unsigned short v17 (unsigned int);
extern unsigned short (*v18) (unsigned int);
extern signed int v19 (signed short);
extern signed int (*v20) (signed short);
extern signed short v21 (unsigned int, signed int);
extern signed short (*v22) (unsigned int, signed int);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern unsigned int v25 (unsigned int, signed short, signed char);
extern unsigned int (*v26) (unsigned int, signed short, signed char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed short v29 (signed char, unsigned int);
extern signed short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed int v32 = 3;
signed char v31 = 0;

static signed char v1 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 1;
unsigned int v36 = 7U;
signed short v35 = 1;
trace++;
switch (trace)
{
case 0: 
return 0;
case 1: 
{
signed short v38;
unsigned short v39;
unsigned int v40;
signed short v41;
signed char v42;
v38 = -1 + 3;
v39 = v37 + v37;
v40 = v34 - 7U;
v41 = v35 + v35;
v42 = v15 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 3: 
return -2;
case 4: 
{
unsigned short v43;
v43 = v9 ();
history[history_index++] = (int)v43;
}
break;
case 12: 
return -2;
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
unsigned int v46;
signed char v47;
v46 = 7U - 2U;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
