#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (unsigned char, unsigned short);
extern signed char (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int, unsigned int);
extern unsigned char (*v8) (signed char, signed short, signed int, unsigned int);
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed int, unsigned int, unsigned char, signed char);
extern signed char (*v14) (signed int, unsigned int, unsigned char, signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
extern void v17 (signed int, signed short, signed int);
extern void (*v18) (signed int, signed short, signed int);
extern signed short v19 (signed char, signed char, unsigned short);
extern signed short (*v20) (signed char, signed char, unsigned short);
signed char v21 (signed char);
signed char (*v22) (signed char) = v21;
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
signed short v25 (signed int, signed int);
signed short (*v26) (signed int, signed int) = v25;
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (unsigned char, unsigned int);
extern unsigned char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned int v32 = 4U;
signed int v31 = 3;

signed short v25 (signed int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 3;
unsigned int v37 = 0U;
signed int v36 = 3;
trace++;
switch (trace)
{
case 4: 
return 0;
default: abort ();
}
}
}
}

signed char v21 (signed char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 5;
signed int v41 = 3;
unsigned short v40 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v43;
unsigned short v44;
unsigned int v45;
v43 = 4 - 1;
v44 = v42 + v42;
v45 = v27 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 9: 
return 0;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned int v48 = 5U;
signed char v47 = -4;
unsigned short v46 = 4;
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
signed char v51;
signed char v52;
v51 = 3 - 0;
v52 = v1 (v51);
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
