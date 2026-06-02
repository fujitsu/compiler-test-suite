#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, unsigned char, signed short);
static signed short (*v2) (unsigned short, unsigned char, signed short) = v1;
unsigned char v3 (unsigned short, signed short, signed short);
unsigned char (*v4) (unsigned short, signed short, signed short) = v3;
extern signed int v5 (signed short, unsigned char, signed int, signed char);
extern signed int (*v6) (signed short, unsigned char, signed int, signed char);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern unsigned char v11 (signed int, unsigned char, signed char);
extern unsigned char (*v12) (signed int, unsigned char, signed char);
extern unsigned short v13 (signed short, signed short);
extern unsigned short (*v14) (signed short, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int);
extern signed int (*v22) (unsigned short, signed int);
extern signed short v23 (signed int, signed int, unsigned short, signed int);
extern signed short (*v24) (signed int, signed int, unsigned short, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned int v32 = 6U;
unsigned short v31 = 6;

unsigned char v3 (unsigned short v34, signed short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 2;
unsigned int v38 = 0U;
signed char v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v40, unsigned char v41, signed short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned int v45 = 4U;
signed char v44 = -2;
unsigned short v43 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v46;
signed short v47;
v46 = -1 + v42;
v47 = v7 (v46);
history[history_index++] = (int)v47;
}
break;
case 12: 
return v42;
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
unsigned short v50;
unsigned char v51;
signed short v52;
signed short v53;
v50 = v31 + 4;
v51 = 3 + 4;
v52 = 1 + 3;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
