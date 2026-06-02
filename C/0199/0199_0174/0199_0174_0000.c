#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
extern unsigned int v5 (unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
void v11 (signed int, unsigned int, signed int);
void (*v12) (signed int, unsigned int, signed int) = v11;
signed char v13 (signed char, unsigned char);
signed char (*v14) (signed char, unsigned char) = v13;
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int);
extern void (*v18) (signed char, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int);
signed char v21 (signed char, unsigned char);
signed char (*v22) (signed char, unsigned char) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned short v25 (signed char, unsigned char, signed short);
extern unsigned short (*v26) (signed char, unsigned char, signed short);
unsigned int v27 (signed int);
unsigned int (*v28) (signed int) = v27;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
unsigned int v32 = 5U;
signed char v31 = 1;

unsigned int v27 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 2;
unsigned char v36 = 7;
signed int v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v40 = 0;
unsigned int v39 = 0U;
unsigned short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed char v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 3;
signed int v44 = -2;
signed int v43 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v46, unsigned char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 6;
unsigned short v49 = 0;
signed int v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v51, unsigned int v52, signed int v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 3;
signed char v55 = 2;
signed int v54 = 3;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
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
signed int v59;
signed char v60;
signed short v61;
v59 = 1 + 3;
v60 = v33 - v31;
v61 = v1 (v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
