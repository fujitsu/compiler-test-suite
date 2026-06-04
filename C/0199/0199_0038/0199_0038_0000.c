#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
unsigned short v3 (signed char);
unsigned short (*v4) (signed char) = v3;
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
unsigned char v11 (unsigned short);
unsigned char (*v12) (unsigned short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v19 (signed short, unsigned char);
extern signed int (*v20) (signed short, unsigned char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned short, unsigned char, signed char, signed int);
extern unsigned int (*v26) (unsigned short, unsigned char, signed char, signed int);
unsigned int v27 (signed int, signed char, signed int);
unsigned int (*v28) (signed int, signed char, signed int) = v27;
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned char v32 = 7;
unsigned char v31 = 4;

unsigned int v27 (signed int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -2;
signed short v38 = -4;
unsigned char v37 = 1;
trace++;
switch (trace)
{
case 9: 
return 4U;
case 11: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -3;
unsigned short v42 = 7;
unsigned short v41 = 2;
trace++;
switch (trace)
{
case 5: 
return 3;
case 7: 
{
unsigned char v44;
unsigned short v45;
v44 = 0 - 6;
v45 = v5 (v44);
history[history_index++] = (int)v45;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v3 (signed char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 5;
signed char v48 = 0;
unsigned char v47 = 4;
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
unsigned int v52;
signed short v53;
signed char v54;
v52 = 1U + 6U;
v53 = -4 - -4;
v54 = v1 (v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
