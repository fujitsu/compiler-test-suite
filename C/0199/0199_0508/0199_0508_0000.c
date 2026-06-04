#include <stdio.h>
#include <stdlib.h>
static signed short v1 (void);
static signed short (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed short, signed char, unsigned int);
extern signed char (*v6) (signed short, signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short v9 (signed short, signed int);
extern unsigned short (*v10) (signed short, signed int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern unsigned short v13 (signed short, unsigned short, signed int, unsigned int);
extern unsigned short (*v14) (signed short, unsigned short, signed int, unsigned int);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed int v19 (signed short, signed char, unsigned int);
extern signed int (*v20) (signed short, signed char, unsigned int);
signed int v21 (signed char, signed char, signed int, unsigned int);
signed int (*v22) (signed char, signed char, signed int, unsigned int) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern signed int v27 (unsigned int, unsigned short, unsigned int);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
signed int v32 = -2;
signed short v31 = -2;

signed int v21 (signed char v34, signed char v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
unsigned short v39 = 2;
unsigned short v38 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (void)
{
{
for (;;) {
signed int v43 = -3;
signed short v42 = -3;
unsigned int v41 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v44;
unsigned short v45;
unsigned int v46;
signed int v47;
v44 = v41 + v41;
v45 = 7 + 0;
v46 = v41 + v41;
v47 = v27 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 2: 
{
signed char v48;
signed int v49;
v48 = -1 - -1;
v49 = v17 (v48);
history[history_index++] = (int)v49;
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
signed short v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
