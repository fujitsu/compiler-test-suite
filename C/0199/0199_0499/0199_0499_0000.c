#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned short v5 (signed short, signed short, unsigned int);
extern unsigned short (*v6) (signed short, signed short, unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed char v9 (unsigned int);
signed char (*v10) (unsigned int) = v9;
extern signed char v11 (unsigned short, unsigned char, unsigned short);
extern signed char (*v12) (unsigned short, unsigned char, unsigned short);
extern signed short v15 (signed short);
extern signed short (*v16) (signed short);
extern unsigned short v17 (unsigned short, signed int);
extern unsigned short (*v18) (unsigned short, signed int);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
signed short v21 (signed short, unsigned int, signed int, signed short);
signed short (*v22) (signed short, unsigned int, signed int, signed short) = v21;
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed short, unsigned int);
extern unsigned short (*v26) (signed short, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
void v29 (signed char, unsigned char, signed char);
void (*v30) (signed char, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = -2;
unsigned int v31 = 3U;

void v29 (signed char v34, unsigned char v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 3;
unsigned char v38 = 2;
unsigned short v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v40, unsigned int v41, signed int v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -3;
signed char v45 = 1;
unsigned short v44 = 2;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed char v9 (unsigned int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 5;
signed short v49 = -4;
signed char v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed char v53 = -1;
unsigned short v52 = 5;
unsigned int v51 = 4U;
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
unsigned int v56;
unsigned short v57;
unsigned char v58;
v56 = 4U + v31;
v57 = 5 + 0;
v58 = v1 (v56, v57);
history[history_index++] = (int)v58;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
