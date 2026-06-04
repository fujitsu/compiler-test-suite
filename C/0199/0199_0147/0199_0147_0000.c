#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
extern signed char v3 (signed char, signed int);
extern signed char (*v4) (signed char, signed int);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned char v7 (unsigned char, signed char, signed int);
extern unsigned char (*v8) (unsigned char, signed char, signed int);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
extern signed short v11 (signed char, signed short);
extern signed short (*v12) (signed char, signed short);
extern signed short v13 (unsigned short);
extern signed short (*v14) (unsigned short);
extern unsigned int v15 (signed int, signed short, signed short);
extern unsigned int (*v16) (signed int, signed short, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
signed short v19 (signed short, unsigned int, unsigned short, signed char);
signed short (*v20) (signed short, unsigned int, unsigned short, signed char) = v19;
unsigned int v21 (unsigned char, unsigned int, signed char);
unsigned int (*v22) (unsigned char, unsigned int, signed char) = v21;
extern signed short v23 (signed short);
extern signed short (*v24) (signed short);
extern unsigned int v25 (signed short, signed char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, signed char, signed short, unsigned short);
extern signed char v27 (unsigned short, signed short, unsigned int, unsigned char);
extern signed char (*v28) (unsigned short, signed short, unsigned int, unsigned char);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
unsigned short v32 = 4;
unsigned char v31 = 3;

unsigned int v21 (unsigned char v34, unsigned int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 0;
unsigned int v38 = 6U;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v40, unsigned int v41, unsigned short v42, signed char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 5U;
signed char v45 = 2;
unsigned char v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed char v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 4;
signed int v49 = -3;
unsigned int v48 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed char v53 = 1;
unsigned int v52 = 7U;
signed char v51 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (void)
{
{
for (;;) {
unsigned short v56 = 6;
unsigned char v55 = 2;
unsigned int v54 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v57;
signed short v58;
v57 = -1 + -2;
v58 = v23 (v57);
history[history_index++] = (int)v58;
}
break;
case 4: 
{
unsigned char v59;
signed char v60;
signed int v61;
unsigned char v62;
v59 = v55 - v55;
v60 = 1 + 3;
v61 = -4 - 2;
v62 = v7 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 6: 
{
signed char v63;
v63 = v17 ();
history[history_index++] = (int)v63;
}
break;
case 8: 
{
signed short v64;
signed short v65;
v64 = -1 + 0;
v65 = v23 (v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return v54;
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
unsigned int v68;
v68 = v1 ();
history[history_index++] = (int)v68;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
