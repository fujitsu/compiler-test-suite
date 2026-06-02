#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned int, signed short, unsigned char, signed int);
static unsigned char (*v2) (unsigned int, signed short, unsigned char, signed int) = v1;
extern signed char v3 (unsigned short, signed char, unsigned char);
extern signed char (*v4) (unsigned short, signed char, unsigned char);
extern signed char v5 (unsigned short, signed char, unsigned int, signed short);
extern signed char (*v6) (unsigned short, signed char, unsigned int, signed short);
extern signed short v7 (signed short, unsigned short, signed int);
extern signed short (*v8) (signed short, unsigned short, signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed short v11 (signed char);
signed short (*v12) (signed char) = v11;
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern signed char v15 (signed int, signed short, signed char, signed int);
extern signed char (*v16) (signed int, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
extern unsigned int v21 (signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed char, signed int, unsigned short);
extern unsigned char v23 (unsigned char, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char, unsigned char);
extern void v25 (signed char, signed short, unsigned short);
extern void (*v26) (signed char, signed short, unsigned short);
extern void v27 (signed char, unsigned short, unsigned char, unsigned int);
extern void (*v28) (signed char, unsigned short, unsigned char, unsigned int);
extern unsigned short v29 (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (unsigned char, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed char v32 = 1;
unsigned int v31 = 4U;

signed short v11 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 2;
signed int v36 = -2;
signed short v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned int v38, signed short v39, unsigned char v40, signed int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -4;
signed int v43 = -2;
unsigned char v42 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v45;
signed int v46;
v45 = v38 + 1U;
v46 = v13 (v45);
history[history_index++] = (int)v46;
}
break;
case 2: 
{
unsigned short v47;
signed char v48;
unsigned int v49;
signed short v50;
signed char v51;
v47 = 4 - 7;
v48 = 0 + -3;
v49 = 1U - 1U;
v50 = 2 - -1;
v51 = v5 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 14: 
return v40;
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
unsigned int v54;
signed short v55;
unsigned char v56;
signed int v57;
unsigned char v58;
v54 = v31 - 4U;
v55 = -4 - 0;
v56 = 5 - 2;
v57 = 3 - -3;
v58 = v1 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
