#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned char, unsigned int);
static signed char (*v2) (unsigned char, unsigned int) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (signed short, unsigned char, unsigned short);
extern unsigned char (*v6) (signed short, unsigned char, unsigned short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern signed short v9 (signed int, signed short);
extern signed short (*v10) (signed int, signed short);
extern void v11 (signed int, signed int, signed int);
extern void (*v12) (signed int, signed int, signed int);
extern unsigned int v13 (signed char, signed char, signed char);
extern unsigned int (*v14) (signed char, signed char, signed char);
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned short (*v22) (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned int v23 (signed short, signed int, unsigned int);
extern unsigned int (*v24) (signed short, signed int, unsigned int);
extern signed int v25 (signed int, signed short);
extern signed int (*v26) (signed int, signed short);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed short v32 = -4;
signed short v31 = 0;

static signed char v1 (unsigned char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 0;
signed int v37 = 0;
unsigned char v36 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v39;
signed int v40;
v39 = 0 + v38;
v40 = v27 (v39);
history[history_index++] = (int)v40;
}
break;
case 2: 
{
signed int v41;
signed int v42;
signed int v43;
v41 = v37 - v37;
v42 = v37 + v37;
v43 = v37 + v37;
v11 (v41, v42, v43);
}
break;
case 8: 
{
signed char v44;
signed char v45;
v44 = 0 - -3;
v45 = v29 (v44);
history[history_index++] = (int)v45;
}
break;
case 10: 
{
signed short v46;
signed int v47;
unsigned int v48;
unsigned int v49;
v46 = 0 - -3;
v47 = v37 - v37;
v48 = 7U - v35;
v49 = v23 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return -4;
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
unsigned char v52;
unsigned int v53;
signed char v54;
v52 = 1 + 1;
v53 = 6U - 7U;
v54 = v1 (v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
