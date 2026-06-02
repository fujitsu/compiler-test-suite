#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v6) (unsigned int, signed char, signed short, unsigned char);
extern signed short v7 (unsigned short, signed char, signed char);
extern signed short (*v8) (unsigned short, signed char, signed char);
extern signed short v9 (unsigned int, unsigned char, unsigned short);
extern signed short (*v10) (unsigned int, unsigned char, unsigned short);
unsigned int v11 (signed int, signed char, signed int, unsigned short);
unsigned int (*v12) (signed int, signed char, signed int, unsigned short) = v11;
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
extern signed short v15 (unsigned int, signed int, signed char);
extern signed short (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
void v19 (signed short, signed short);
void (*v20) (signed short, signed short) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned short v25 (signed int, signed char, unsigned int);
extern unsigned short (*v26) (signed int, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed short v29 (unsigned char, signed short, unsigned char);
extern signed short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
signed int v32 = -3;
signed char v31 = 0;

void v19 (signed short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
unsigned int v37 = 2U;
unsigned int v36 = 6U;
trace++;
switch (trace)
{
case 1: 
return;
case 5: 
{
signed int v39;
v39 = v23 ();
history[history_index++] = (int)v39;
}
break;
case 7: 
{
signed int v40;
v40 = v23 ();
history[history_index++] = (int)v40;
}
break;
case 9: 
{
signed int v41;
v41 = v23 ();
history[history_index++] = (int)v41;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (signed int v42, signed char v43, signed int v44, unsigned short v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 7U;
signed char v47 = -2;
signed char v46 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed char v51 = -4;
signed short v50 = 2;
unsigned short v49 = 5;
trace++;
switch (trace)
{
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
signed int v54;
v54 = v1 ();
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
