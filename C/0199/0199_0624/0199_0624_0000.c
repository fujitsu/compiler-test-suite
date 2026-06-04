#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (signed short, unsigned int, signed char);
static unsigned short (*v2) (signed short, unsigned int, signed char) = v1;
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
signed char v5 (unsigned char, signed short);
signed char (*v6) (unsigned char, signed short) = v5;
void v7 (void);
void (*v8) (void) = v7;
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern signed short v11 (unsigned int, signed int, unsigned short, signed int);
extern signed short (*v12) (unsigned int, signed int, unsigned short, signed int);
extern signed int v13 (signed int, signed short, unsigned int);
extern signed int (*v14) (signed int, signed short, unsigned int);
extern signed char v15 (signed short);
extern signed char (*v16) (signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, signed char, signed int);
extern void (*v24) (signed char, unsigned char, signed char, signed int);
extern signed char v25 (unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned int, signed char, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
unsigned short v32 = 3;
signed int v31 = 1;

signed char v19 (void)
{
{
for (;;) {
unsigned short v36 = 7;
signed int v35 = -3;
signed int v34 = -4;
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
unsigned int v39 = 4U;
signed short v38 = -3;
signed int v37 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -3;
signed int v43 = 3;
signed short v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v45)
{
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = 0;
signed short v47 = -4;
signed int v46 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (signed short v49, unsigned int v50, signed char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 2U;
signed char v53 = 1;
signed int v52 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v55;
v55 = v17 ();
history[history_index++] = (int)v55;
}
break;
case 2: 
{
signed short v56;
signed char v57;
v56 = v49 - -4;
v57 = v15 (v56);
history[history_index++] = (int)v57;
}
break;
case 12: 
return 6;
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
signed short v60;
unsigned int v61;
signed char v62;
unsigned short v63;
v60 = 2 - -3;
v61 = 2U - 1U;
v62 = 2 - -3;
v63 = v1 (v60, v61, v62);
history[history_index++] = (int)v63;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
