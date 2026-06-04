#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
extern void v3 (unsigned char, signed char, signed char);
extern void (*v4) (unsigned char, signed char, signed char);
extern void v5 (void);
extern void (*v6) (void);
unsigned int v7 (unsigned int, unsigned short);
unsigned int (*v8) (unsigned int, unsigned short) = v7;
signed char v9 (unsigned int, signed short, unsigned char);
signed char (*v10) (unsigned int, signed short, unsigned char) = v9;
void v11 (unsigned int, signed char, signed char, signed short);
void (*v12) (unsigned int, signed char, signed char, signed short) = v11;
extern unsigned char v13 (unsigned char, signed int, unsigned short, signed char);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short, signed char);
extern unsigned char v15 (signed int, signed char, signed char, signed char);
extern unsigned char (*v16) (signed int, signed char, signed char, signed char);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v19 (signed short, unsigned int);
extern signed char (*v20) (signed short, unsigned int);
extern signed short v21 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, signed char, unsigned int, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern void v25 (signed int, unsigned int, signed char);
extern void (*v26) (signed int, unsigned int, signed char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, signed int);
extern unsigned char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned short v32 = 1;
signed int v31 = 2;

signed int v23 (void)
{
{
for (;;) {
unsigned short v36 = 3;
unsigned int v35 = 7U;
signed short v34 = 0;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return -3;
case 8: 
return 0;
default: abort ();
}
}
}
}

void v11 (unsigned int v37, signed char v38, signed char v39, signed short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 0U;
unsigned short v42 = 4;
unsigned short v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v44, signed short v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 0;
signed char v48 = 0;
unsigned int v47 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v50, unsigned short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 1U;
signed short v53 = -1;
signed int v52 = -4;
trace++;
switch (trace)
{
case 2: 
return v54;
case 10: 
return v50;
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
unsigned short v57;
signed short v58;
v57 = 5 + v32;
v58 = v1 (v57);
history[history_index++] = (int)v58;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
