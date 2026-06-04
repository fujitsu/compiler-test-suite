#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed short, signed char, unsigned short);
static signed char (*v2) (signed short, signed char, unsigned short) = v1;
extern void v3 (signed int, unsigned char, unsigned short, signed char);
extern void (*v4) (signed int, unsigned char, unsigned short, signed char);
extern void v5 (signed char, signed int, unsigned char);
extern void (*v6) (signed char, signed int, unsigned char);
extern unsigned short v7 (signed char, unsigned short);
extern unsigned short (*v8) (signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed char);
extern unsigned char (*v10) (unsigned char, signed char);
extern signed char v11 (signed char, signed short, signed short, unsigned char);
extern signed char (*v12) (signed char, signed short, signed short, unsigned char);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern void v15 (void);
extern void (*v16) (void);
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned short v32 = 6;
unsigned char v31 = 0;

unsigned short v17 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -3;
signed int v36 = -1;
unsigned char v35 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed short v38, signed char v39, unsigned short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 1;
unsigned int v42 = 5U;
signed short v41 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v44;
signed int v45;
v44 = -4 - 2;
v45 = v29 (v44);
history[history_index++] = (int)v45;
}
break;
case 2: 
{
signed short v46;
signed int v47;
v46 = v41 + 0;
v47 = v29 (v46);
history[history_index++] = (int)v47;
}
break;
case 4: 
{
signed int v48;
unsigned char v49;
unsigned short v50;
signed char v51;
v48 = -1 + 1;
v49 = 2 + 4;
v50 = v40 + 5;
v51 = -4 + v39;
v3 (v48, v49, v50, v51);
}
break;
case 14: 
return 3;
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
signed short v54;
signed char v55;
unsigned short v56;
signed char v57;
v54 = v33 - v33;
v55 = 0 + 0;
v56 = 3 - v32;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
