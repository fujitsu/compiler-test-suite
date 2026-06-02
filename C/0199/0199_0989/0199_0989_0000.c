#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, unsigned short, unsigned int, signed int);
static signed int (*v2) (signed char, unsigned short, unsigned int, signed int) = v1;
extern signed char v3 (signed short, signed short, unsigned int);
extern signed char (*v4) (signed short, signed short, unsigned int);
extern signed short v5 (signed int, signed int);
extern signed short (*v6) (signed int, signed int);
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
signed short v13 (unsigned short, unsigned int, unsigned int);
signed short (*v14) (unsigned short, unsigned int, unsigned int) = v13;
extern unsigned int v15 (signed short, signed short, unsigned char);
extern unsigned int (*v16) (signed short, signed short, unsigned char);
extern signed short v17 (signed short, unsigned char, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, unsigned char, signed char);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern signed int v21 (unsigned int, unsigned short, signed int);
extern signed int (*v22) (unsigned int, unsigned short, signed int);
extern unsigned char v23 (unsigned int, signed short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned int, signed short, signed char, unsigned char);
extern unsigned char v25 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char, signed short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned char, signed short, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed int v32 = 3;
signed char v31 = 3;

signed short v13 (unsigned short v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
unsigned short v38 = 2;
unsigned int v37 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (signed char v40, unsigned short v41, unsigned int v42, signed int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -1;
unsigned short v45 = 3;
unsigned char v44 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v47;
signed short v48;
unsigned char v49;
unsigned int v50;
v47 = 0 + -1;
v48 = 0 + -2;
v49 = v44 - 6;
v50 = v15 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 8: 
{
unsigned int v51;
unsigned short v52;
signed int v53;
signed int v54;
v51 = 2U + 0U;
v52 = 2 + v45;
v53 = 0 + v43;
v54 = v21 (v51, v52, v53);
history[history_index++] = (int)v54;
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
signed char v57;
unsigned short v58;
unsigned int v59;
signed int v60;
signed int v61;
v57 = v31 - v31;
v58 = 0 + 0;
v59 = 7U + 4U;
v60 = -4 - 0;
v61 = v1 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
