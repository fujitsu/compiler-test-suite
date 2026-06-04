#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed short v3 (unsigned short, unsigned short, signed short);
extern signed short (*v4) (unsigned short, unsigned short, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (unsigned char, unsigned short);
extern signed int (*v10) (unsigned char, unsigned short);
extern unsigned short v11 (signed char, signed char, signed char, signed int);
extern unsigned short (*v12) (signed char, signed char, signed char, signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed int v15 (unsigned short, unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed char v19 (unsigned int, signed int, unsigned short);
signed char (*v20) (unsigned int, signed int, unsigned short) = v19;
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
void v23 (signed short, signed char);
void (*v24) (signed short, signed char) = v23;
signed char v25 (unsigned short);
signed char (*v26) (unsigned short) = v25;
static signed short v27 (void);
static signed short (*v28) (void) = v27;
extern void v29 (unsigned int, unsigned short, signed char, unsigned short);
extern void (*v30) (unsigned int, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -1;
unsigned char v31 = 2;

static signed short v27 (void)
{
{
for (;;) {
signed char v36 = 2;
signed short v35 = -3;
unsigned char v34 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v37;
unsigned short v38;
signed char v39;
unsigned short v40;
v37 = 7U + 3U;
v38 = 7 + 7;
v39 = 0 + v36;
v40 = 4 + 4;
v29 (v37, v38, v39, v40);
}
break;
case 11: 
return v35;
default: abort ();
}
}
}
}

signed char v25 (unsigned short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 3;
unsigned short v43 = 2;
unsigned int v42 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed short v45, signed char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed char v49 = 0;
unsigned short v48 = 2;
signed char v47 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed short v50;
v50 = v27 ();
history[history_index++] = (int)v50;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v51, signed int v52, unsigned short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 7U;
signed int v55 = -1;
unsigned int v54 = 6U;
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
unsigned int v59;
v59 = 2U + 4U;
v1 (v59);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
