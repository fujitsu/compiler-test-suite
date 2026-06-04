#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char, signed short);
static unsigned short (*v2) (unsigned char, signed short) = v1;
extern unsigned int v3 (signed short, signed char, unsigned int);
extern unsigned int (*v4) (signed short, signed char, unsigned int);
extern unsigned char v5 (unsigned int, signed char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned int, signed char, signed int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (signed int, signed int, signed short);
extern signed int (*v10) (signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
extern signed short v15 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (signed char, signed short, unsigned int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (signed int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, signed int);
signed int v21 (signed char, signed int, signed char, unsigned char);
signed int (*v22) (signed char, signed int, signed char, unsigned char) = v21;
void v23 (unsigned short, signed short, signed char, unsigned char);
void (*v24) (unsigned short, signed short, signed char, unsigned char) = v23;
extern signed int v25 (signed char, signed short);
extern signed int (*v26) (signed char, signed short);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
signed short v29 (unsigned short);
signed short (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed char v32 = -2;
unsigned int v31 = 4U;

signed short v29 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 3;
unsigned int v36 = 4U;
signed char v35 = -1;
trace++;
switch (trace)
{
case 3: 
return -4;
case 5: 
return 0;
case 7: 
return 1;
case 9: 
return v37;
case 11: 
return v37;
default: abort ();
}
}
}
}

void v23 (unsigned short v38, signed short v39, signed char v40, unsigned char v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 1;
signed int v43 = -4;
signed int v42 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v45, signed int v46, signed char v47, unsigned char v48)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 1;
unsigned int v50 = 6U;
signed char v49 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v52, signed short v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -4;
signed short v55 = 3;
signed short v54 = -2;
trace++;
switch (trace)
{
case 0: 
{
v7 ();
}
break;
case 14: 
return 7;
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
signed short v60;
unsigned short v61;
v59 = 5 - 2;
v60 = 0 + 1;
v61 = v1 (v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
