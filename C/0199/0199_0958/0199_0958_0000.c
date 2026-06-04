#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char);
static signed short (*v2) (signed char) = v1;
unsigned char v3 (signed char);
unsigned char (*v4) (signed char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
signed char v15 (signed int, signed short, signed int);
signed char (*v16) (signed int, signed short, signed int) = v15;
extern void v17 (signed char, signed char, signed char);
extern void (*v18) (signed char, signed char, signed char);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed int v27 (signed short, unsigned int);
extern signed int (*v28) (signed short, unsigned int);
signed char v29 (signed char);
signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed int v32 = -3;
unsigned int v31 = 5U;

signed char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 0;
signed short v36 = -2;
unsigned short v35 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v38, signed short v39, signed int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 6U;
unsigned char v42 = 2;
signed int v41 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 7;
signed char v46 = 2;
unsigned int v45 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed char v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 3;
signed int v50 = 2;
signed char v49 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v52;
v52 = v7 ();
history[history_index++] = (int)v52;
}
break;
case 8: 
{
unsigned int v53;
v53 = 3U + 3U;
v13 (v53);
}
break;
case 12: 
return 3;
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
signed char v56;
signed short v57;
v56 = -2 - -1;
v57 = v1 (v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
