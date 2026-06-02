#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (unsigned char);
static unsigned char (*v2) (unsigned char) = v1;
extern signed char v3 (unsigned short, unsigned char, signed char, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char, signed char, unsigned char);
extern unsigned int v5 (signed char, signed int, unsigned char, signed int);
extern unsigned int (*v6) (signed char, signed int, unsigned char, signed int);
extern unsigned int v7 (unsigned char, unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
signed int v13 (unsigned char, unsigned char);
signed int (*v14) (unsigned char, unsigned char) = v13;
extern signed int v15 (signed short, unsigned int, unsigned int);
extern signed int (*v16) (signed short, unsigned int, unsigned int);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
signed char v21 (signed short);
signed char (*v22) (signed short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed int v32 = -1;
unsigned short v31 = 2;

signed char v21 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 2;
unsigned int v36 = 6U;
unsigned short v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed char v40 = 3;
unsigned int v39 = 2U;
signed short v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned char v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 3;
unsigned short v44 = 3;
unsigned short v43 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = -3;
signed int v48 = 1;
unsigned int v47 = 5U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v50;
signed char v51;
v50 = 6U - 3U;
v51 = v9 (v50);
history[history_index++] = (int)v51;
}
break;
case 2: 
{
signed char v52;
signed int v53;
unsigned char v54;
signed int v55;
unsigned int v56;
v52 = 1 - -2;
v53 = -2 + v48;
v54 = 2 - 0;
v55 = v48 - 3;
v56 = v5 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 14: 
return 1;
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
unsigned char v59;
unsigned char v60;
v59 = 3 + 2;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
