#include <stdio.h>
#include <stdlib.h>
static signed int v1 (void);
static signed int (*v2) (void) = v1;
extern signed int v3 (signed short, signed char, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed char, signed short);
void v5 (signed short);
void (*v6) (signed short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned short v9 (signed short, signed char);
unsigned short (*v10) (signed short, signed char) = v9;
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v16) (signed int, unsigned char, signed short, unsigned char);
extern signed char v17 (signed int, unsigned char);
extern signed char (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, signed char, signed char);
extern signed char (*v20) (signed char, signed char, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (signed short, unsigned short, unsigned char);
extern signed char (*v28) (signed short, unsigned short, unsigned char);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = -3;
signed short v31 = -3;

unsigned char v29 (void)
{
{
for (;;) {
signed char v36 = 2;
signed short v35 = 2;
unsigned short v34 = 3;
trace++;
switch (trace)
{
case 2: 
return 5;
case 6: 
return 2;
case 8: 
return 2;
case 10: 
return 6;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v37, signed char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = -2;
signed short v40 = -4;
signed int v39 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
unsigned int v44 = 5U;
unsigned short v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (void)
{
{
for (;;) {
signed short v48 = -1;
unsigned short v47 = 6;
unsigned char v46 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v49;
unsigned char v50;
signed char v51;
v49 = 3 - 2;
v50 = v46 - v46;
v51 = v17 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 4: 
{
signed int v52;
unsigned char v53;
signed short v54;
unsigned char v55;
unsigned char v56;
v52 = 2 + 2;
v53 = v46 - 5;
v54 = v48 + -3;
v55 = 7 - v46;
v56 = v15 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 12: 
return 2;
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
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
