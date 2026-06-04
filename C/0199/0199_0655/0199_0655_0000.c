#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (signed char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (signed char, unsigned char, signed char, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned short, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned short, signed char);
signed char v7 (unsigned short, signed short, unsigned char);
signed char (*v8) (unsigned short, signed short, unsigned char) = v7;
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v12) (unsigned char, unsigned char, signed int, signed short);
extern signed char v13 (signed short, signed char);
extern signed char (*v14) (signed short, signed char);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, signed int, unsigned char);
extern signed int (*v22) (unsigned short, signed int, unsigned char);
extern signed int v23 (unsigned int, unsigned int, signed int);
extern signed int (*v24) (unsigned int, unsigned int, signed int);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
signed int v27 (unsigned int, unsigned int, unsigned int);
signed int (*v28) (unsigned int, unsigned int, unsigned int) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned char v32 = 1;
unsigned char v31 = 6;

signed int v27 (unsigned int v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 1;
signed short v38 = 0;
signed short v37 = 2;
trace++;
switch (trace)
{
case 7: 
return -4;
case 9: 
return 0;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned short v42 = 3;
unsigned int v41 = 6U;
unsigned char v40 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v43, signed short v44, unsigned char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -1;
unsigned int v47 = 3U;
unsigned short v46 = 3;
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
unsigned char v51;
unsigned char v52;
unsigned int v53;
signed short v54;
v51 = 0 + 4;
v52 = 0 + 4;
v53 = 7U + 2U;
v54 = v1 (v51, v52, v53);
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
