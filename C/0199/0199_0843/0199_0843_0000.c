#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char);
static signed short (*v2) (signed char) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned char, unsigned char, signed char);
extern unsigned int (*v10) (unsigned char, unsigned char, signed char);
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
extern void v19 (unsigned short, signed char, unsigned short);
extern void (*v20) (unsigned short, signed char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (unsigned short, unsigned short, signed int, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (signed char, signed int, unsigned char);
extern unsigned char (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned short v32 = 5;
unsigned int v31 = 6U;

static signed short v1 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 3;
unsigned char v36 = 5;
signed short v35 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v38;
unsigned short v39;
unsigned int v40;
v38 = 4U - 5U;
v39 = 5 - 6;
v40 = v17 (v38, v39);
history[history_index++] = (int)v40;
}
break;
case 12: 
return v35;
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
signed short v44;
v43 = 3 - 3;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
