#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned short, signed char);
extern unsigned int v3 (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v5 (signed int, unsigned short, signed int);
extern unsigned int (*v6) (signed int, unsigned short, signed int);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (signed char, unsigned int);
extern signed char (*v16) (signed char, unsigned int);
signed short v17 (void);
signed short (*v18) (void) = v17;
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern void v23 (signed int, unsigned int, unsigned int);
extern void (*v24) (signed int, unsigned int, unsigned int);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
signed short v29 (unsigned char, unsigned int, unsigned int, signed short);
signed short (*v30) (unsigned char, unsigned int, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed char v32 = -1;
signed int v31 = 0;

signed short v29 (unsigned char v34, unsigned int v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 4;
unsigned char v39 = 5;
signed int v38 = 2;
trace++;
switch (trace)
{
case 2: 
return -2;
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed short v43 = -4;
signed short v42 = -2;
signed int v41 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
signed char v46 = 0;
signed short v45 = -3;
trace++;
switch (trace)
{
case 7: 
return -1;
case 9: 
return 3;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed int v50 = 3;
signed short v49 = -4;
unsigned char v48 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned int v53 = 6U;
signed short v52 = 0;
unsigned int v51 = 3U;
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
signed char v58;
v56 = 4U - 1U;
v57 = 2 - 0;
v58 = v33 + 2;
v1 (v56, v57, v58);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
