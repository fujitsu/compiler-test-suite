#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned int);
static void (*v2) (unsigned int) = v1;
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
extern unsigned char v5 (signed short, signed short, signed short);
extern unsigned char (*v6) (signed short, signed short, signed short);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern void v9 (signed short, unsigned short, unsigned char);
extern void (*v10) (signed short, unsigned short, unsigned char);
extern void v11 (unsigned int, unsigned short, unsigned char);
extern void (*v12) (unsigned int, unsigned short, unsigned char);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern signed short v21 (signed char, unsigned int, unsigned char, signed int);
extern signed short (*v22) (signed char, unsigned int, unsigned char, signed int);
void v23 (void);
void (*v24) (void) = v23;
extern signed int v25 (signed short, signed int, signed char, unsigned int);
extern signed int (*v26) (signed short, signed int, signed char, unsigned int);
signed short v27 (signed char, signed char);
signed short (*v28) (signed char, signed char) = v27;
extern signed short v29 (signed short, signed int, unsigned char, signed short);
extern signed short (*v30) (signed short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned short v32 = 1;
unsigned short v31 = 6;

signed short v27 (signed char v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -1;
unsigned short v37 = 7;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
case 2: 
return v38;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
signed char v41 = 3;
signed char v40 = -4;
signed char v39 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed int v44 = -2;
unsigned short v43 = 2;
unsigned short v42 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 5U;
signed int v47 = -4;
signed char v46 = -3;
trace++;
switch (trace)
{
case 6: 
{
signed short v49;
signed short v50;
signed short v51;
unsigned char v52;
v49 = -4 - 0;
v50 = 1 - -1;
v51 = -2 - -1;
v52 = v5 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 8: 
return v47;
case 10: 
return v47;
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed int v55 = -3;
signed char v54 = 2;
unsigned short v53 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 3;
signed char v58 = 3;
signed char v57 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v60;
unsigned short v61;
unsigned char v62;
v60 = 0 - -2;
v61 = 0 - 1;
v62 = 1 + 5;
v9 (v60, v61, v62);
}
break;
case 12: 
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
unsigned int v65;
v65 = 5U + 7U;
v1 (v65);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
