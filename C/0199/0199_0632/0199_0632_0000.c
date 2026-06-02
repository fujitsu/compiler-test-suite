#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, signed int);
extern signed int (*v2) (signed short, unsigned int, signed int);
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed int, unsigned int);
extern signed int v9 (unsigned char, unsigned int);
extern signed int (*v10) (unsigned char, unsigned int);
extern signed char v11 (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char (*v12) (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char v13 (signed char, unsigned int, unsigned char);
extern unsigned char (*v14) (signed char, unsigned int, unsigned char);
extern signed int v15 (signed char, signed short, signed short);
extern signed int (*v16) (signed char, signed short, signed short);
signed short v17 (unsigned int, signed int, signed int);
signed short (*v18) (unsigned int, signed int, signed int) = v17;
extern void v19 (signed int, signed char, signed short);
extern void (*v20) (signed int, signed char, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed short v23 (unsigned char, signed char);
extern signed short (*v24) (unsigned char, signed char);
extern unsigned char v25 (unsigned char, unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, signed short);
unsigned char v27 (unsigned int, signed short);
unsigned char (*v28) (unsigned int, signed short) = v27;
extern signed short v29 (signed short, unsigned char);
extern signed short (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed short v32 = -4;
signed int v31 = -3;

unsigned char v27 (unsigned int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
signed int v37 = 2;
unsigned char v36 = 2;
trace++;
switch (trace)
{
case 2: 
return 2;
case 4: 
return v36;
case 8: 
return 1;
case 10: 
return v36;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v39, signed int v40, signed int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 7U;
signed short v43 = 0;
unsigned short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned char v48 = 4;
unsigned short v47 = 3;
unsigned short v46 = 2;
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
signed short v51;
unsigned int v52;
signed int v53;
signed int v54;
v51 = 2 - v32;
v52 = 0U + 7U;
v53 = v31 + v31;
v54 = v1 (v51, v52, v53);
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
