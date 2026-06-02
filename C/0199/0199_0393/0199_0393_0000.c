#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (unsigned int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned int, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (signed short, unsigned int, signed short, signed int);
extern signed char v9 (unsigned int, unsigned int, unsigned int, signed short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned int, signed short);
extern void v11 (unsigned int, unsigned int, unsigned short, signed short);
extern void (*v12) (unsigned int, unsigned int, unsigned short, signed short);
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned char v17 (unsigned char);
extern unsigned char (*v18) (unsigned char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned int);
extern unsigned short (*v24) (unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
unsigned int v29 (signed int, signed int);
unsigned int (*v30) (signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed int v32 = 0;
signed char v31 = 3;

unsigned int v29 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 0U;
unsigned int v37 = 7U;
unsigned short v36 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v41 = -2;
signed int v40 = 0;
signed short v39 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 2;
unsigned char v44 = 3;
signed char v43 = -1;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v46;
signed int v47;
v46 = 1 - 1;
v47 = v27 (v46);
history[history_index++] = (int)v47;
}
break;
case 8: 
{
unsigned short v48;
signed int v49;
v48 = 2 + 0;
v49 = v27 (v48);
history[history_index++] = (int)v49;
}
break;
case 10: 
{
unsigned short v50;
signed int v51;
v50 = v45 - 0;
v51 = v27 (v50);
history[history_index++] = (int)v51;
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
unsigned char v54;
v54 = 0 - 0;
v1 (v54);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
