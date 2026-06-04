#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned short);
static unsigned char (*v2) (unsigned short) = v1;
extern signed char v3 (signed char, signed char, signed int, unsigned short);
extern signed char (*v4) (signed char, signed char, signed int, unsigned short);
extern signed int v5 (unsigned char, unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned char, unsigned int, unsigned short, signed int);
extern void v7 (signed char, unsigned int);
extern void (*v8) (signed char, unsigned int);
void v9 (signed int);
void (*v10) (signed int) = v9;
extern unsigned int v11 (unsigned int, signed int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed int, signed short, unsigned char);
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
extern unsigned char v15 (signed int, signed int, signed short, unsigned short);
extern unsigned char (*v16) (signed int, signed int, signed short, unsigned short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned short, signed int);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern signed short v25 (signed short, signed short, unsigned int);
extern signed short (*v26) (signed short, signed short, unsigned int);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern signed short v29 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
unsigned int v32 = 1U;
signed char v31 = 3;

void v9 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -1;
signed char v36 = 0;
signed short v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 7;
unsigned short v40 = 4;
unsigned short v39 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v42;
unsigned char v43;
v42 = 4U + 4U;
v43 = v27 (v42);
history[history_index++] = (int)v43;
}
break;
case 2: 
{
signed int v44;
unsigned int v45;
v44 = 0 + 0;
v45 = v13 (v44);
history[history_index++] = (int)v45;
}
break;
case 4: 
{
signed int v46;
unsigned int v47;
v46 = -2 + -2;
v47 = v13 (v46);
history[history_index++] = (int)v47;
}
break;
case 6: 
{
unsigned char v48;
unsigned int v49;
unsigned short v50;
signed int v51;
signed int v52;
v48 = 1 - 2;
v49 = 5U + 5U;
v50 = v40 + v40;
v51 = 2 - -2;
v52 = v5 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 8: 
{
signed int v53;
unsigned int v54;
v53 = -4 - 3;
v54 = v23 (v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
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
unsigned short v57;
unsigned char v58;
v57 = 3 - 2;
v58 = v1 (v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
