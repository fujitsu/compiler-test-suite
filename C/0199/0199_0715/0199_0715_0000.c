#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
signed char v5 (void);
signed char (*v6) (void) = v5;
void v7 (signed char, unsigned char, unsigned char, unsigned char);
void (*v8) (signed char, unsigned char, unsigned char, unsigned char) = v7;
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned short v11 (signed int, unsigned char, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
signed short v15 (unsigned char, unsigned char, signed int, signed char);
signed short (*v16) (unsigned char, unsigned char, signed int, signed char) = v15;
extern signed int v17 (signed short, unsigned char, unsigned char, unsigned int);
extern signed int (*v18) (signed short, unsigned char, unsigned char, unsigned int);
extern signed short v19 (unsigned short, signed int, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v27 (signed char, unsigned int, signed short, signed short);
extern signed int (*v28) (signed char, unsigned int, signed short, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed char v32 = -2;
unsigned char v31 = 7;

signed short v15 (unsigned char v34, unsigned char v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 0;
unsigned char v39 = 4;
signed short v38 = -4;
trace++;
switch (trace)
{
case 7: 
{
signed short v41;
unsigned char v42;
unsigned char v43;
unsigned int v44;
signed int v45;
v41 = v38 - v38;
v42 = v34 + 5;
v43 = v34 + v39;
v44 = 4U - 0U;
v45 = v17 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 13: 
return v38;
default: abort ();
}
}
}
}

void v7 (signed char v46, unsigned char v47, unsigned char v48, unsigned char v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 4U;
signed char v51 = -2;
signed char v50 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned char v55 = 5;
unsigned int v54 = 4U;
signed int v53 = -2;
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
signed short v58;
v58 = v1 ();
history[history_index++] = (int)v58;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
