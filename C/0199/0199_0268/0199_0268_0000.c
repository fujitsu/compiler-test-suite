#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v2) (signed int, unsigned short, signed char, unsigned short);
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
extern unsigned int v5 (unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned char, unsigned short, unsigned char);
signed short v7 (signed short, signed char);
signed short (*v8) (signed short, signed char) = v7;
extern signed char v9 (signed short, unsigned short, signed int, unsigned int);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned int);
signed char v11 (unsigned char);
signed char (*v12) (unsigned char) = v11;
extern signed int v13 (signed char, signed short, signed char);
extern signed int (*v14) (signed char, signed short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed int, signed short);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
static signed char v21 (void);
static signed char (*v22) (void) = v21;
extern signed char v25 (unsigned int, unsigned short);
extern signed char (*v26) (unsigned int, unsigned short);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed int v32 = 0;
unsigned short v31 = 2;

static signed char v21 (void)
{
{
for (;;) {
signed int v36 = 1;
signed int v35 = 1;
unsigned short v34 = 0;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

signed char v11 (unsigned char v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
unsigned short v39 = 5;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v41, signed char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -4;
signed char v44 = 1;
unsigned int v43 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 1;
signed int v48 = -1;
signed short v47 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed char v50;
v50 = v21 ();
history[history_index++] = (int)v50;
}
break;
case 6: 
return v49;
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
signed int v53;
unsigned short v54;
signed char v55;
unsigned short v56;
signed short v57;
v53 = v32 - v32;
v54 = 6 + 6;
v55 = 3 - -1;
v56 = v31 + 1;
v57 = v1 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
